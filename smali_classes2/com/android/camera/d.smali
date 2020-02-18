.class public final synthetic Lcom/android/camera/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic wb:Lcom/android/camera/CameraPreferenceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/CameraPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/d;->wb:Lcom/android/camera/CameraPreferenceActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/d;->wb:Lcom/android/camera/CameraPreferenceActivity;

    invoke-static {p0}, Lcom/android/camera/CameraPreferenceActivity;->a(Lcom/android/camera/CameraPreferenceActivity;)V

    return-void
.end method
