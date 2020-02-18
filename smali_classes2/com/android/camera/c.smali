.class public final synthetic Lcom/android/camera/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic wb:Lcom/android/camera/CameraPreferenceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/CameraPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/c;->wb:Lcom/android/camera/CameraPreferenceActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/c;->wb:Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraPreferenceActivity;->d(Landroid/content/DialogInterface;I)V

    return-void
.end method
