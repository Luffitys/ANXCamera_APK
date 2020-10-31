.class public final Lcom/android/server/am/ProcessOomProto$Detail;
.super Ljava/lang/Object;
.source "ProcessOomProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessOomProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Detail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessOomProto$Detail$CpuRunTime;
    }
.end annotation


# static fields
.field public static final CACHED:J = 0x1080000000cL

.field public static final CURRENT_STATE:J = 0x10e00000007L

.field public static final CUR_ADJ:J = 0x10500000004L

.field public static final CUR_RAW_ADJ:J = 0x10500000002L

.field public static final EMPTY:J = 0x1080000000dL

.field public static final HAS_ABOVE_CLIENT:J = 0x1080000000eL

.field public static final LAST_CACHED_PSS:J = 0x1090000000bL

.field public static final LAST_PSS:J = 0x10900000009L

.field public static final LAST_SWAP_PSS:J = 0x1090000000aL

.field public static final MAX_ADJ:J = 0x10500000001L

.field public static final SERVICE_RUN_TIME:J = 0x10b0000000fL

.field public static final SET_ADJ:J = 0x10500000005L

.field public static final SET_RAW_ADJ:J = 0x10500000003L

.field public static final SET_STATE:J = 0x10e00000008L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessOomProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessOomProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ProcessOomProto$Detail;->this$0:Lcom/android/server/am/ProcessOomProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
