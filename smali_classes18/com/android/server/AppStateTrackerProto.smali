.class public final Lcom/android/server/AppStateTrackerProto;
.super Ljava/lang/Object;
.source "AppStateTrackerProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTrackerProto$ExemptedPackage;,
        Lcom/android/server/AppStateTrackerProto$RunAnyInBackgroundRestrictedPackages;
    }
.end annotation


# static fields
.field public static final ACTIVE_UIDS:J = 0x20500000002L

.field public static final EXEMPTED_PACKAGES:J = 0x20b0000000aL

.field public static final FORCED_APP_STANDBY_FEATURE_ENABLED:J = 0x1080000000dL

.field public static final FORCE_ALL_APPS_STANDBY:J = 0x10800000001L

.field public static final FORCE_ALL_APPS_STANDBY_FOR_SMALL_BATTERY:J = 0x10800000007L

.field public static final FOREGROUND_UIDS:J = 0x2050000000bL

.field public static final IS_PLUGGED_IN:J = 0x10800000008L

.field public static final IS_SMALL_BATTERY_DEVICE:J = 0x10800000006L

.field public static final POWER_SAVE_USER_WHITELIST_APP_IDS:J = 0x2050000000cL

.field public static final POWER_SAVE_WHITELIST_APP_IDS:J = 0x20500000003L

.field public static final RUN_ANY_IN_BACKGROUND_RESTRICTED_PACKAGES:J = 0x20b00000005L

.field public static final STATS:J = 0x10b00000009L

.field public static final TEMP_POWER_SAVE_WHITELIST_APP_IDS:J = 0x20500000004L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
