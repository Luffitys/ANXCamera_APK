.class Lcom/miui/internal/log/format/SimpleFormatter$1;
.super Ljava/lang/ThreadLocal;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/log/format/SimpleFormatter;


# direct methods
.method constructor <init>(Lcom/miui/internal/log/format/SimpleFormatter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$1;->this$0:Lcom/miui/internal/log/format/SimpleFormatter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;
    .locals 0

    new-instance p0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;

    invoke-direct {p0}, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;-><init>()V

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/miui/internal/log/format/SimpleFormatter$1;->initialValue()Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;

    move-result-object p0

    return-object p0
.end method
