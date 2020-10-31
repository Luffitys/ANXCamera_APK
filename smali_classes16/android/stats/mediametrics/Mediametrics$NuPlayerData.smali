.class public final Landroid/stats/mediametrics/Mediametrics$NuPlayerData;
.super Ljava/lang/Object;
.source "Mediametrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/stats/mediametrics/Mediametrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NuPlayerData"
.end annotation


# static fields
.field public static final AUDIO_CODEC:J = 0x1090000000aL

.field public static final AUDIO_MIME:J = 0x10900000009L

.field public static final DATA_SOURCE_TYPE:J = 0x10900000010L

.field public static final DURATION_MILLIS:J = 0x1030000000bL

.field public static final ERROR:J = 0x1050000000dL

.field public static final ERROR_CODE:J = 0x1050000000eL

.field public static final ERROR_STATE:J = 0x1090000000fL

.field public static final FRAMERATE:J = 0x10100000008L

.field public static final FRAMES:J = 0x10300000006L

.field public static final FRAMES_DROPPED:J = 0x10300000007L

.field public static final FRAMES_DROPPED_STARTUP:J = 0x10300000014L

.field public static final HEIGHT:J = 0x10500000005L

.field public static final PLAYING_MILLIS:J = 0x1030000000cL

.field public static final REBUFFERING_MILLIS:J = 0x10300000011L

.field public static final REBUFFERS:J = 0x10500000012L

.field public static final REBUFFER_AT_EXIT:J = 0x10500000013L

.field public static final VIDEO_CODEC:J = 0x10900000003L

.field public static final VIDEO_MIME:J = 0x10900000002L

.field public static final WHICH_PLAYER:J = 0x10900000001L

.field public static final WIDTH:J = 0x10500000004L


# instance fields
.field final synthetic this$0:Landroid/stats/mediametrics/Mediametrics;


# direct methods
.method public constructor <init>(Landroid/stats/mediametrics/Mediametrics;)V
    .registers 2

    iput-object p1, p0, Landroid/stats/mediametrics/Mediametrics$NuPlayerData;->this$0:Landroid/stats/mediametrics/Mediametrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
