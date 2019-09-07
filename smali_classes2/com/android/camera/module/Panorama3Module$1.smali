.class Lcom/android/camera/module/Panorama3Module$1;
.super Ljava/lang/Object;
.source "Panorama3Module.java"

# interfaces
.implements Lcom/android/camera/module/Panorama3Module$SensorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/Panorama3Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/Panorama3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/module/Panorama3Module;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$000(Lcom/android/camera/module/Panorama3Module;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    aget v4, v0, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    aget v2, v0, v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    add-float/2addr v2, v4

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    aget v2, v0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    add-float/2addr v2, p1

    aput v2, v0, v1

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0}, Lcom/android/camera/module/Panorama3Module;->access$208(Lcom/android/camera/module/Panorama3Module;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {v0}, Lcom/android/camera/module/Panorama3Module;->access$100(Lcom/android/camera/module/Panorama3Module;)[F

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    aput p1, v0, v1

    iget-object p0, p0, Lcom/android/camera/module/Panorama3Module$1;->this$0:Lcom/android/camera/module/Panorama3Module;

    invoke-static {p0, v3}, Lcom/android/camera/module/Panorama3Module;->access$202(Lcom/android/camera/module/Panorama3Module;I)I

    :goto_0
    return-void
.end method
