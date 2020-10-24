.class public final synthetic Lcom/android/camera/features/gif/OooOOO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

.field public final synthetic OooO0O0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/gif/GifMediaPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/gif/OooOOO;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iput-object p2, p0, Lcom/android/camera/features/gif/OooOOO;->OooO0O0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/gif/OooOOO;->OooO00o:Lcom/android/camera/features/gif/GifMediaPlayer;

    iget-object p0, p0, Lcom/android/camera/features/gif/OooOOO;->OooO0O0:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/camera/features/gif/GifMediaPlayer;->OooOOo(Ljava/lang/String;)V

    return-void
.end method
