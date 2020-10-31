.class Landroid/hardware/thermal/V1_1/IThermal$Stub$1;
.super Ljava/lang/Object;
.source "IThermal.java"

# interfaces
.implements Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/thermal/V1_1/IThermal$Stub;->onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/thermal/V1_1/IThermal$Stub;

.field final synthetic val$_hidl_reply:Landroid/os/HwParcel;


# direct methods
.method constructor <init>(Landroid/hardware/thermal/V1_1/IThermal$Stub;Landroid/os/HwParcel;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->this$0:Landroid/hardware/thermal/V1_1/IThermal$Stub;

    iput-object p2, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/thermal/V1_0/ThermalStatus;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/thermal/V1_0/Temperature;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {p1, v0}, Landroid/hardware/thermal/V1_0/ThermalStatus;->writeToParcel(Landroid/os/HwParcel;)V

    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-static {v0, p2}, Landroid/hardware/thermal/V1_0/Temperature;->writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/hardware/thermal/V1_1/IThermal$Stub$1;->val$_hidl_reply:Landroid/os/HwParcel;

    invoke-virtual {v0}, Landroid/os/HwParcel;->send()V

    return-void
.end method
