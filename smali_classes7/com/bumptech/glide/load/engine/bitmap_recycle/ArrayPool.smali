.class public interface abstract Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final STANDARD_BUFFER_SIZE_BYTES:I = 0x10000


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(ILjava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract getExact(ILjava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract put(Ljava/lang/Object;)V
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Class;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract trimMemory(I)V
.end method
