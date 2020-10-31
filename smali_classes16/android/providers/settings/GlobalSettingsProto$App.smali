.class public final Landroid/providers/settings/GlobalSettingsProto$App;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "App"
.end annotation


# static fields
.field public static final AUTO_RESTRICTION_ENABLED:J = 0x10b00000003L

.field public static final FORCED_APP_STANDBY_ENABLED:J = 0x10b00000004L

.field public static final FORCED_APP_STANDBY_FOR_SMALL_BATTERY_ENABLED:J = 0x10b00000005L

.field public static final IDLE_CONSTANTS:J = 0x10b00000001L

.field public static final STANDBY_ENABLED:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$App;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
