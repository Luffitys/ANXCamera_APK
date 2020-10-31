.class public final Lcom/android/server/am/ProcessOomProto;
.super Ljava/lang/Object;
.source "ProcessOomProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessOomProto$Detail;
    }
.end annotation


# static fields
.field public static final ACTIVITIES:J = 0x10800000005L

.field public static final ADJ_SOURCE_OBJECT:J = 0x1090000000eL

.field public static final ADJ_SOURCE_PROC:J = 0x10b0000000dL

.field public static final ADJ_TARGET_COMPONENT_NAME:J = 0x10b0000000bL

.field public static final ADJ_TARGET_OBJECT:J = 0x1090000000cL

.field public static final ADJ_TYPE:J = 0x1090000000aL

.field public static final DETAIL:J = 0x10b0000000fL

.field public static final NUM:J = 0x10500000002L

.field public static final OOM_ADJ:J = 0x10900000003L

.field public static final PERSISTENT:J = 0x10800000001L

.field public static final PROC:J = 0x10b00000009L

.field public static final SCHED_GROUP:J = 0x10e00000004L

.field public static final SCHED_GROUP_BACKGROUND:I = 0x0

.field public static final SCHED_GROUP_DEFAULT:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x2

.field public static final SCHED_GROUP_TOP_APP_BOUND:I = 0x3

.field public static final SCHED_GROUP_UNKNOWN:I = -0x1

.field public static final SERVICES:J = 0x10800000006L

.field public static final STATE:J = 0x10e00000007L

.field public static final TRIM_MEMORY_LEVEL:J = 0x10500000008L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
