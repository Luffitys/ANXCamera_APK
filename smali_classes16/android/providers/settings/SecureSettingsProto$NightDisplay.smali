.class public final Landroid/providers/settings/SecureSettingsProto$NightDisplay;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NightDisplay"
.end annotation


# static fields
.field public static final ACTIVATED:J = 0x10b00000001L

.field public static final AUTO_MODE:J = 0x10b00000002L

.field public static final COLOR_TEMPERATURE:J = 0x10b00000003L

.field public static final CUSTOM_END_TIME:J = 0x10b00000005L

.field public static final CUSTOM_START_TIME:J = 0x10b00000004L

.field public static final LAST_ACTIVATED_TIME:J = 0x10b00000006L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$NightDisplay;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
