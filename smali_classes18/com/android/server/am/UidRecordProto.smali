.class public final Lcom/android/server/am/UidRecordProto;
.super Ljava/lang/Object;
.source "UidRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UidRecordProto$ProcStateSequence;
    }
.end annotation


# static fields
.field public static final CHANGE_ACTIVE:I = 0x2

.field public static final CHANGE_CACHED:I = 0x3

.field public static final CHANGE_GONE:I = 0x0

.field public static final CHANGE_IDLE:I = 0x1

.field public static final CHANGE_UNCACHED:I = 0x4

.field public static final CURRENT:J = 0x10e00000002L

.field public static final EPHEMERAL:J = 0x10800000003L

.field public static final FG_SERVICES:J = 0x10800000004L

.field public static final IDLE:J = 0x10800000007L

.field public static final LAST_BACKGROUND_TIME:J = 0x10b00000006L

.field public static final LAST_REPORTED_CHANGES:J = 0x20e00000008L

.field public static final NETWORK_STATE_UPDATE:J = 0x10b0000000aL

.field public static final NUM_PROCS:J = 0x10500000009L

.field public static final UID:J = 0x10500000001L

.field public static final WHILELIST:J = 0x10800000005L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
