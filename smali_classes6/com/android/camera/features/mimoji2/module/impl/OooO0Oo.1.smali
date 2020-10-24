.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/OooO0Oo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

.field public final synthetic OooO0O0:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0Oo;->OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iput p2, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0Oo;->OooO0O0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0Oo;->OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0Oo;->OooO0O0:I

    invoke-virtual {v0, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->OooO0oO(I)V

    return-void
.end method
