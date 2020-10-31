.class public final Landroid/providers/settings/GlobalSettingsProto$LowPowerMode;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerMode"
.end annotation


# static fields
.field public static final AUTOMATIC_POWER_SAVER_MODE:J = 0x10b00000004L

.field public static final ENABLED:J = 0x10b00000001L

.field public static final STICKY_AUTO_DISABLE_ENABLED:J = 0x10b00000006L

.field public static final STICKY_AUTO_DISABLE_LEVEL:J = 0x10b00000007L

.field public static final STICKY_ENABLED:J = 0x10b00000005L

.field public static final TRIGGER_LEVEL:J = 0x10b00000002L

.field public static final TRIGGER_LEVEL_MAX:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$LowPowerMode;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
