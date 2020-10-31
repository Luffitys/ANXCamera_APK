.class public final Landroid/os/SystemProto$Misc;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Misc"
.end annotation


# static fields
.field public static final BATTERY_SAVER_MODE_ENABLED_DURATION_MS:J = 0x1030000000aL

.field public static final DEEP_DOZE_COUNT:J = 0x1050000000dL

.field public static final DEEP_DOZE_ENABLED_DURATION_MS:J = 0x1030000000cL

.field public static final DEEP_DOZE_IDLING_COUNT:J = 0x1050000000fL

.field public static final DEEP_DOZE_IDLING_DURATION_MS:J = 0x1030000000eL

.field public static final FULL_WAKELOCK_TOTAL_DURATION_MS:J = 0x10300000003L

.field public static final INTERACTIVE_DURATION_MS:J = 0x10300000009L

.field public static final LIGHT_DOZE_COUNT:J = 0x10500000012L

.field public static final LIGHT_DOZE_ENABLED_DURATION_MS:J = 0x10300000011L

.field public static final LIGHT_DOZE_IDLING_COUNT:J = 0x10500000014L

.field public static final LIGHT_DOZE_IDLING_DURATION_MS:J = 0x10300000013L

.field public static final LONGEST_DEEP_DOZE_DURATION_MS:J = 0x10300000010L

.field public static final LONGEST_LIGHT_DOZE_DURATION_MS:J = 0x10300000015L

.field public static final MOBILE_RADIO_ACTIVE_ADJUSTED_TIME_MS:J = 0x10300000006L

.field public static final MOBILE_RADIO_ACTIVE_COUNT:J = 0x10500000007L

.field public static final MOBILE_RADIO_ACTIVE_DURATION_MS:J = 0x10300000005L

.field public static final MOBILE_RADIO_ACTIVE_UNKNOWN_DURATION_MS:J = 0x10500000008L

.field public static final NUM_CONNECTIVITY_CHANGES:J = 0x1050000000bL

.field public static final PARTIAL_WAKELOCK_TOTAL_DURATION_MS:J = 0x10300000004L

.field public static final PHONE_ON_DURATION_MS:J = 0x10300000002L

.field public static final SCREEN_ON_DURATION_MS:J = 0x10300000001L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$Misc;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
