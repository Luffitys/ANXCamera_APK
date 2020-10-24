.class public final synthetic Lcom/android/camera/provider/OooO00o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/provider/SplashProvider;

.field public final synthetic OooO0O0:Landroid/content/Context;

.field public final synthetic OooO0OO:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/provider/SplashProvider;Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/provider/OooO00o;->OooO00o:Lcom/android/camera/provider/SplashProvider;

    iput-object p2, p0, Lcom/android/camera/provider/OooO00o;->OooO0O0:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/camera/provider/OooO00o;->OooO0OO:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/provider/OooO00o;->OooO00o:Lcom/android/camera/provider/SplashProvider;

    iget-object v1, p0, Lcom/android/camera/provider/OooO00o;->OooO0O0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/camera/provider/OooO00o;->OooO0OO:Ljava/io/File;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/provider/SplashProvider;->OooO0O0(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
