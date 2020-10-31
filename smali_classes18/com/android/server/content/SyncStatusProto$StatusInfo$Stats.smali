.class public final Lcom/android/server/content/SyncStatusProto$StatusInfo$Stats;
.super Ljava/lang/Object;
.source "SyncStatusProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStatusProto$StatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stats"
.end annotation


# static fields
.field public static final NUM_CANCELS:J = 0x10500000004L

.field public static final NUM_FAILURES:J = 0x10500000003L

.field public static final NUM_SOURCE_FEED:J = 0x1050000000aL

.field public static final NUM_SOURCE_LOCAL:J = 0x10500000006L

.field public static final NUM_SOURCE_OTHER:J = 0x10500000005L

.field public static final NUM_SOURCE_PERIODIC:J = 0x10500000009L

.field public static final NUM_SOURCE_POLL:J = 0x10500000007L

.field public static final NUM_SOURCE_USER:J = 0x10500000008L

.field public static final NUM_SYNCS:J = 0x10500000002L

.field public static final TOTAL_ELAPSED_TIME:J = 0x10300000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/content/SyncStatusProto$StatusInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncStatusProto$StatusInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/content/SyncStatusProto$StatusInfo$Stats;->this$1:Lcom/android/server/content/SyncStatusProto$StatusInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
