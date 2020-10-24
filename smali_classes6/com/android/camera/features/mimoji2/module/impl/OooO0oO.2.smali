.class public final synthetic Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

.field public final synthetic OooO0O0:Ljava/nio/ByteBuffer;

.field public final synthetic OooO0OO:I

.field public final synthetic OooO0Oo:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;Ljava/nio/ByteBuffer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iput-object p2, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0O0:Ljava/nio/ByteBuffer;

    iput p3, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0OO:I

    iput p4, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0Oo:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO00o:Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;

    iget-object v1, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0O0:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0OO:I

    iget p0, p0, Lcom/android/camera/features/mimoji2/module/impl/OooO0oO;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/camera/features/mimoji2/module/impl/MimojiAvatarEngine2Impl;->OooOO0O(Ljava/nio/ByteBuffer;II)V

    return-void
.end method
