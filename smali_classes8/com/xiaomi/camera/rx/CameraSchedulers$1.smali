.class Lcom/xiaomi/camera/rx/CameraSchedulers$1;
.super Ljava/lang/ThreadLocal;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/camera/rx/CameraSchedulers$1;->initialValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
