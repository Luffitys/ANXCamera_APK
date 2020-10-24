.class public Lcom/miui/internal/log/message/StringFormattedMessage;
.super Lcom/miui/internal/log/message/AbstractMessage;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "StringFormattedMessage"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

.field private mParameters:[Ljava/lang/Object;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/internal/log/message/AbstractMessage;-><init>()V

    new-instance v0, Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-direct {v0}, Lcom/miui/internal/log/util/AppendableFormatter;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    return-void
.end method

.method public static obtain()Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 1

    const-class v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    invoke-static {v0}, Lcom/miui/internal/log/message/MessageFactory;->obtain(Ljava/lang/Class;)Lcom/miui/internal/log/message/Message;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Appendable;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    iget-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, p0}, Lcom/miui/internal/log/util/AppendableFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/miui/internal/log/util/AppendableFormatter;

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "StringFormattedMessage"

    const-string v0, "Fail to format message"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object p0
.end method

.method protected onRecycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {p0, v0}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object p0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object p0
.end method
