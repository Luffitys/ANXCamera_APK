.class public final Landroid/providers/settings/GlobalSettingsProto$Sounds;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sounds"
.end annotation


# static fields
.field public static final CAR_DOCK:J = 0x10b00000001L

.field public static final CAR_UNDOCK:J = 0x10b00000002L

.field public static final CHARGING_STARTED:J = 0x10b00000004L

.field public static final DESK_DOCK:J = 0x10b00000005L

.field public static final DESK_UNDOCK:J = 0x10b00000006L

.field public static final DOCK_SOUNDS_ENABLED:J = 0x10b00000007L

.field public static final DOCK_SOUNDS_ENABLED_WHEN_ACCESSIBILITY:J = 0x10b00000008L

.field public static final LOCK:J = 0x10b00000009L

.field public static final LOW_BATTERY:J = 0x10b0000000aL

.field public static final LOW_BATTERY_SOUNDS_ENABLED:J = 0x10b0000000cL

.field public static final LOW_BATTERY_SOUND_TIMEOUT:J = 0x10b0000000bL

.field public static final TRUSTED:J = 0x10b0000000dL

.field public static final UNLOCK:J = 0x10b0000000eL

.field public static final WIRELESS_CHARGING_STARTED:J = 0x10b0000000fL


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Sounds;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
