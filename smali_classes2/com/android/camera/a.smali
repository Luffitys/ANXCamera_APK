.class public final synthetic Lcom/android/camera/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/camera/ThermalDetector$OnThermalNotificationListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/Camera;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/a;->wb:Lcom/android/camera/Camera;

    return-void
.end method


# virtual methods
.method public final onThermalNotification(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/a;->wb:Lcom/android/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/android/camera/Camera;->j(I)V

    return-void
.end method
