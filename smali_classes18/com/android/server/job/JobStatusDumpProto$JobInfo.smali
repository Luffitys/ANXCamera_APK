.class public final Lcom/android/server/job/JobStatusDumpProto$JobInfo;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStatusDumpProto$JobInfo$Backoff;,
        Lcom/android/server/job/JobStatusDumpProto$JobInfo$TriggerContentUri;
    }
.end annotation


# static fields
.field public static final BACKOFF_POLICY:J = 0x10b00000016L

.field public static final CLIP_DATA:J = 0x10b00000010L

.field public static final EXTRAS:J = 0x10b0000000eL

.field public static final FLAGS:J = 0x10500000007L

.field public static final GRANTED_URI_PERMISSIONS:J = 0x10b00000011L

.field public static final HAS_EARLY_CONSTRAINT:J = 0x10800000017L

.field public static final HAS_LATE_CONSTRAINT:J = 0x10800000018L

.field public static final IS_PERIODIC:J = 0x10800000002L

.field public static final IS_PERSISTED:J = 0x10800000005L

.field public static final MAX_EXECUTION_DELAY_MS:J = 0x10300000015L

.field public static final MIN_LATENCY_MS:J = 0x10300000014L

.field public static final PERIOD_FLEX_MS:J = 0x10300000004L

.field public static final PERIOD_INTERVAL_MS:J = 0x10300000003L

.field public static final PRIORITY:J = 0x11100000006L

.field public static final REQUIRED_NETWORK:J = 0x10b00000012L

.field public static final REQUIRES_BATTERY_NOT_LOW:J = 0x10800000009L

.field public static final REQUIRES_CHARGING:J = 0x10800000008L

.field public static final REQUIRES_DEVICE_IDLE:J = 0x1080000000aL

.field public static final SERVICE:J = 0x10b00000001L

.field public static final TOTAL_NETWORK_DOWNLOAD_BYTES:J = 0x10300000019L

.field public static final TOTAL_NETWORK_UPLOAD_BYTES:J = 0x1030000001aL

.field public static final TRANSIENT_EXTRAS:J = 0x10b0000000fL

.field public static final TRIGGER_CONTENT_MAX_DELAY_MS:J = 0x1030000000dL

.field public static final TRIGGER_CONTENT_UPDATE_DELAY_MS:J = 0x1030000000cL

.field public static final TRIGGER_CONTENT_URIS:J = 0x20b0000000bL


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStatusDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStatusDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobStatusDumpProto$JobInfo;->this$0:Lcom/android/server/job/JobStatusDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
