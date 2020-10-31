.class public final Landroid/stats/mediametrics/Mediametrics$AudioRecordData;
.super Ljava/lang/Object;
.source "Mediametrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics/Mediametrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioRecordData"
.end annotation


# static fields
.field public static final ATTRIBUTES:J = 0x1090000000dL

.field public static final CHANNELS:J = 0x10500000005L

.field public static final CHANNEL_MASK:J = 0x1030000000eL

.field public static final COUNT:J = 0x10500000008L

.field public static final CREATED_MILLIS:J = 0x10300000006L

.field public static final DURATION_MILLIS:J = 0x10300000007L

.field public static final ENCODING:J = 0x10900000001L

.field public static final ERROR_CODE:J = 0x10500000009L

.field public static final ERROR_FUNCTION:J = 0x1090000000aL

.field public static final FRAME_COUNT:J = 0x1050000000cL

.field public static final LATENCY:J = 0x10500000003L

.field public static final PORT_ID:J = 0x1050000000bL

.field public static final SAMPLERATE:J = 0x10500000004L

.field public static final SOURCE:J = 0x10900000002L

.field public static final START_COUNT:J = 0x1030000000fL


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics/Mediametrics;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics/Mediametrics;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/mediametrics/Mediametrics$AudioRecordData;->this$0:Landroid/stats/mediametrics/Mediametrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
