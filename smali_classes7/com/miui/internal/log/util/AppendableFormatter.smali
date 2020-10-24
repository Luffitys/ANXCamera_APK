.class public Lcom/miui/internal/log/util/AppendableFormatter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAppendableWrapper:Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;

.field private mFormatter:Ljava/util/Formatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/miui/internal/log/util/AppendableFormatter;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;-><init>(Lcom/miui/internal/log/util/AppendableFormatter$1;)V

    iput-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mAppendableWrapper:Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;

    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mAppendableWrapper:Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;

    invoke-direct {v0, v1, p1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mFormatter:Ljava/util/Formatter;

    return-void
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/miui/internal/log/util/AppendableFormatter;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object p0
.end method

.method public varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Lcom/miui/internal/log/util/AppendableFormatter;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Formatter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    return-object p0
.end method

.method public setAppendable(Ljava/lang/Appendable;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/log/util/AppendableFormatter;->mAppendableWrapper:Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;

    invoke-virtual {p0, p1}, Lcom/miui/internal/log/util/AppendableFormatter$AppendableWrapper;->setAppendable(Ljava/lang/Appendable;)V

    return-void
.end method
