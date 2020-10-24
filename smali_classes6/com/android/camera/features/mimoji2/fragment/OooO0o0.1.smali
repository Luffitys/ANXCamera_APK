.class public final synthetic Lcom/android/camera/features/mimoji2/fragment/OooO0o0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

.field public final synthetic OooO0O0:I

.field public final synthetic OooO0OO:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO00o:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    iput p2, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO0O0:I

    iput-object p3, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO0OO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO00o:Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;

    iget v1, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO0O0:I

    iget-object p0, p0, Lcom/android/camera/features/mimoji2/fragment/OooO0o0;->OooO0OO:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/features/mimoji2/fragment/FragmentMimojiFullScreen;->OooO0O0(ILjava/lang/String;)V

    return-void
.end method
