.class public final Landroid/os/UpdateEngine$ErrorCodeConstants;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UpdateEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorCodeConstants"
.end annotation


# static fields
.field public static final DEVICE_CORRUPTED:I = 0x3d

.field public static final DOWNLOAD_PAYLOAD_VERIFICATION_ERROR:I = 0xc

.field public static final DOWNLOAD_TRANSFER_ERROR:I = 0x9

.field public static final ERROR:I = 0x1

.field public static final FILESYSTEM_COPIER_ERROR:I = 0x4

.field public static final INSTALL_DEVICE_OPEN_ERROR:I = 0x7

.field public static final KERNEL_DEVICE_OPEN_ERROR:I = 0x8

.field public static final NOT_ENOUGH_SPACE:I = 0x3c

.field public static final PAYLOAD_HASH_MISMATCH_ERROR:I = 0xa

.field public static final PAYLOAD_MISMATCHED_TYPE_ERROR:I = 0x6

.field public static final PAYLOAD_SIZE_MISMATCH_ERROR:I = 0xb

.field public static final PAYLOAD_TIMESTAMP_ERROR:I = 0x33

.field public static final POST_INSTALL_RUNNER_ERROR:I = 0x5

.field public static final SUCCESS:I = 0x0

.field public static final UPDATED_BUT_NOT_ACTIVE:I = 0x34


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
