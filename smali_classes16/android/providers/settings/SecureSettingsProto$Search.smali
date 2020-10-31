.class public final Landroid/providers/settings/SecureSettingsProto$Search;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Search"
.end annotation


# static fields
.field public static final GLOBAL_SEARCH_ACTIVITY:J = 0x10b00000001L

.field public static final MAX_RESULTS_PER_SOURCE:J = 0x10b00000004L

.field public static final MAX_RESULTS_TO_DISPLAY:J = 0x10b00000003L

.field public static final MAX_SHORTCUTS_RETURNED:J = 0x10b0000000dL

.field public static final MAX_SOURCE_EVENT_AGE_MILLIS:J = 0x10b0000000aL

.field public static final MAX_STAT_AGE_MILLIS:J = 0x10b00000009L

.field public static final MIN_CLICKS_FOR_SOURCE_RANKING:J = 0x10b0000000cL

.field public static final MIN_IMPRESSIONS_FOR_SOURCE_RANKING:J = 0x10b0000000bL

.field public static final NUM_PROMOTED_SOURCES:J = 0x10b00000002L

.field public static final PER_SOURCE_CONCURRENT_QUERY_LIMIT:J = 0x10b00000013L

.field public static final PREFILL_MILLIS:J = 0x10b00000008L

.field public static final PROMOTED_SOURCE_DEADLINE_MILLIS:J = 0x10b00000006L

.field public static final QUERY_THREAD_CORE_POOL_SIZE:J = 0x10b0000000eL

.field public static final QUERY_THREAD_MAX_POOL_SIZE:J = 0x10b0000000fL

.field public static final SHORTCUT_REFRESH_CORE_POOL_SIZE:J = 0x10b00000010L

.field public static final SHORTCUT_REFRESH_MAX_POOL_SIZE:J = 0x10b00000011L

.field public static final SOURCE_TIMEOUT_MILLIS:J = 0x10b00000007L

.field public static final THREAD_KEEPALIVE_SECONDS:J = 0x10b00000012L

.field public static final WEB_RESULTS_OVERRIDE_LIMIT:J = 0x10b00000005L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Search;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
