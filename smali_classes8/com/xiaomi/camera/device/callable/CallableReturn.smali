.class public Lcom/xiaomi/camera/device/callable/CallableReturn;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/device/callable/CallableReturn;->value:Ljava/lang/Object;

    return-object p0
.end method
