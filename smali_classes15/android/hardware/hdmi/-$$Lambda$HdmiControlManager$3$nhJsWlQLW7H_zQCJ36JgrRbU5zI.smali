.class public final synthetic Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    iput-boolean p2, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;->f$0:Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;

    iget-boolean v1, p0, Landroid/hardware/hdmi/-$$Lambda$HdmiControlManager$3$nhJsWlQLW7H_zQCJ36JgrRbU5zI;->f$1:Z

    invoke-static {v0, v1}, Landroid/hardware/hdmi/HdmiControlManager$3;->lambda$onHdmiCecVolumeControlFeature$0(Landroid/hardware/hdmi/HdmiControlManager$HdmiCecVolumeControlFeatureListener;Z)V

    return-void
.end method
