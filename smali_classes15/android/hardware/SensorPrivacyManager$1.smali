.class Landroid/hardware/SensorPrivacyManager$1;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SensorPrivacyManager;

.field final synthetic val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;


# direct methods
.method constructor <init>(Landroid/hardware/SensorPrivacyManager;Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V
    .registers 3

    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    iput-object p2, p0, Landroid/hardware/SensorPrivacyManager$1;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorPrivacyChanged(Z)V
    .registers 3

    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->val$listener:Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    invoke-interface {v0, p1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Z)V

    return-void
.end method
