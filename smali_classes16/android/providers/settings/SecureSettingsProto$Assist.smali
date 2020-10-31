.class public final Landroid/providers/settings/SecureSettingsProto$Assist;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Assist"
.end annotation


# static fields
.field public static final ASSISTANT:J = 0x10b00000001L

.field public static final DISCLOSURE_ENABLED:J = 0x10b00000004L

.field public static final GESTURE_ENABLED:J = 0x10b00000005L

.field public static final GESTURE_SENSITIVITY:J = 0x10b00000006L

.field public static final GESTURE_SETUP_COMPLETE:J = 0x10b00000009L

.field public static final GESTURE_SILENCE_ALERTS_ENABLED:J = 0x10b00000007L

.field public static final GESTURE_WAKE_ENABLED:J = 0x10b00000008L

.field public static final SCREENSHOT_ENABLED:J = 0x10b00000003L

.field public static final STRUCTURE_ENABLED:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Assist;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
