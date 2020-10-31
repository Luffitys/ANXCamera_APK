.class public Landroid/graphics/TemporaryBuffer;
.super Ljava/lang/Object;
.source "TemporaryBuffer.java"


# static fields
.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(I)[C
    .registers 4

    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    const/4 v2, 0x0

    sput-object v2, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    if-eqz v1, :cond_e

    array-length v0, v1

    if-ge v0, p0, :cond_12

    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    :cond_12
    return-object v1

    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static recycle([C)V
    .registers 3

    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    return-void

    :cond_6
    const-class v0, Landroid/graphics/TemporaryBuffer;

    monitor-enter v0

    :try_start_9
    sput-object p0, Landroid/graphics/TemporaryBuffer;->sTemp:[C

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method
