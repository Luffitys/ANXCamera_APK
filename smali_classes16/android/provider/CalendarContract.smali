.class public final Landroid/provider/CalendarContract;
.super Ljava/lang/Object;
.source "CalendarContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CalendarContract$EventsRawTimes;,
        Landroid/provider/CalendarContract$EventsRawTimesColumns;,
        Landroid/provider/CalendarContract$SyncState;,
        Landroid/provider/CalendarContract$ExtendedProperties;,
        Landroid/provider/CalendarContract$ExtendedPropertiesColumns;,
        Landroid/provider/CalendarContract$Colors;,
        Landroid/provider/CalendarContract$ColorsColumns;,
        Landroid/provider/CalendarContract$CalendarAlerts;,
        Landroid/provider/CalendarContract$CalendarAlertsColumns;,
        Landroid/provider/CalendarContract$Reminders;,
        Landroid/provider/CalendarContract$RemindersColumns;,
        Landroid/provider/CalendarContract$EventDays;,
        Landroid/provider/CalendarContract$EventDaysColumns;,
        Landroid/provider/CalendarContract$CalendarMetaData;,
        Landroid/provider/CalendarContract$CalendarMetaDataColumns;,
        Landroid/provider/CalendarContract$CalendarCache;,
        Landroid/provider/CalendarContract$CalendarCacheColumns;,
        Landroid/provider/CalendarContract$Instances;,
        Landroid/provider/CalendarContract$Events;,
        Landroid/provider/CalendarContract$EventsEntity;,
        Landroid/provider/CalendarContract$EventsColumns;,
        Landroid/provider/CalendarContract$Attendees;,
        Landroid/provider/CalendarContract$AttendeesColumns;,
        Landroid/provider/CalendarContract$Calendars;,
        Landroid/provider/CalendarContract$CalendarEntity;,
        Landroid/provider/CalendarContract$CalendarColumns;,
        Landroid/provider/CalendarContract$SyncColumns;,
        Landroid/provider/CalendarContract$CalendarSyncColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_LOCAL:Ljava/lang/String; = "LOCAL"

.field public static final ACTION_EVENT_REMINDER:Ljava/lang/String; = "android.intent.action.EVENT_REMINDER"

.field public static final ACTION_HANDLE_CUSTOM_EVENT:Ljava/lang/String; = "android.provider.calendar.action.HANDLE_CUSTOM_EVENT"

.field public static final ACTION_VIEW_MANAGED_PROFILE_CALENDAR_EVENT:Ljava/lang/String; = "android.provider.calendar.action.VIEW_MANAGED_PROFILE_CALENDAR_EVENT"

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.calendar"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_CUSTOM_APP_URI:Ljava/lang/String; = "customAppUri"

.field public static final EXTRA_EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final EXTRA_EVENT_BEGIN_TIME:Ljava/lang/String; = "beginTime"

.field public static final EXTRA_EVENT_END_TIME:Ljava/lang/String; = "endTime"

.field public static final EXTRA_EVENT_ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "Calendar"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.android.calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.calendar/enterprise"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/CalendarContract;->ENTERPRISE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startViewCalendarEventInManagedProfile(Landroid/content/Context;JJJZI)Z
    .registers 20

    move-object v0, p0

    const-string v1, "Context is null"

    invoke-static {p0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    move-object v2, v1

    move-wide v3, p1

    move-wide v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->startViewCalendarEventInManagedProfile(JJJZI)Z

    move-result v2

    return v2
.end method
