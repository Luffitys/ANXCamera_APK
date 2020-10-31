.class public final Landroid/providers/settings/GlobalSettingsProto$Development;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Development"
.end annotation


# static fields
.field public static final EMULATE_DISPLAY_CUTOUT:J = 0x10b00000005L

.field public static final ENABLE_FREEFORM_WINDOWS_SUPPORT:J = 0x10b00000003L

.field public static final ENABLE_SIZECOMPAT_FREEFORM:J = 0x10b00000007L

.field public static final FORCE_DESKTOP_MODE_ON_EXTERNAL_DISPLAYS:J = 0x10b00000006L

.field public static final FORCE_RESIZABLE_ACTIVITIES:J = 0x10b00000002L

.field public static final FORCE_RTL:J = 0x10b00000004L

.field public static final SETTINGS_ENABLED:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Development;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
