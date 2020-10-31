.class public Lcom/miui/internal/log/message/StringFormattedMessage;
.super Lcom/miui/internal/log/message/AbstractMessage;
.source "StringFormattedMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StringFormattedMessage"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

.field private mParameters:[Ljava/lang/Object;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/miui/internal/log/message/AbstractMessage;-><init>()V

    new-instance v0, Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-direct {v0}, Lcom/miui/internal/log/util/AppendableFormatter;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    return-void
.end method

.method public static obtain()Lcom/miui/internal/log/message/StringFormattedMessage;
    .registers 1

    const-class v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    invoke-static {v0}, Lcom/miui/internal/log/message/MessageFactory;->obtain(Ljava/lang/Class;)Lcom/miui/internal/log/message/Message;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/log/message/StringFormattedMessage;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Appendable;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    if-eqz v0, :cond_1d

    array-length v0, v0

    if-nez v0, :cond_c

    goto :goto_1d

    :cond_c
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/internal/log/util/AppendableFormatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/miui/internal/log/util/AppendableFormatter;

    goto :goto_2c

    :cond_1d
    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception v0

    const-string v1, "StringFormattedMessage"

    const-string v2, "Fail to format message"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    nop

    :goto_2c
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method protected onRecycle()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    iget-object v1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormatter:Lcom/miui/internal/log/util/AppendableFormatter;

    invoke-virtual {v1, v0}, Lcom/miui/internal/log/util/AppendableFormatter;->setAppendable(Ljava/lang/Appendable;)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public setParameters([Ljava/lang/Object;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mParameters:[Ljava/lang/Object;

    return-object p0
.end method

.method public setThrowable(Ljava/lang/Throwable;)Lcom/miui/internal/log/message/StringFormattedMessage;
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/log/message/StringFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object p0
.end method
