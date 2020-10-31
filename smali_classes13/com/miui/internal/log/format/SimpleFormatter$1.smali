.class Lcom/miui/internal/log/format/SimpleFormatter$1;
.super Ljava/lang/ThreadLocal;
.source "SimpleFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/log/format/SimpleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/log/format/SimpleFormatter;


# direct methods
.method constructor <init>(Lcom/miui/internal/log/format/SimpleFormatter;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/log/format/SimpleFormatter$1;->this$0:Lcom/miui/internal/log/format/SimpleFormatter;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;
    .registers 2

    new-instance v0, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;

    invoke-direct {v0}, Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/miui/internal/log/format/SimpleFormatter$1;->initialValue()Lcom/miui/internal/log/format/SimpleFormatter$ThreadCache;

    move-result-object v0

    return-object v0
.end method
