.class Landroid/hardware/hdmi/HdmiControlManager$3;
.super Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;
.source "HdmiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiControlManager;->createHdmiCecVolumeControlFeatureListenerWrapper(Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/hdmi/HdmiControlManager;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;


# direct methods
.method constructor <init>(Landroid/hardware/hdmi/HdmiControlManager;Ljava/util/concurrent/Executor;Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->this$0:Landroid/hardware/hdmi/HdmiControlManager;

    iput-object p2, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onHdmiCecVolumeControlFeature$0(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;Z)V
    .registers 2

    invoke-interface {p0, p1}, Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;->onHdmiCecVolumeControlFeature(Z)V

    return-void
.end method


# virtual methods
.method public onHdmiCecVolumeControlFeature(Z)V
    .registers 5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiControlManager$3;->val$listener:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    new-instance v2, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;

    invoke-direct {v2, v1, p1}, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;-><init>(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
