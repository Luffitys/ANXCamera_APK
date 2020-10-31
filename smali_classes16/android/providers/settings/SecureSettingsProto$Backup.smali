.class public final Landroid/providers/settings/SecureSettingsProto$Backup;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Backup"
.end annotation


# static fields
.field public static final AUTO_RESTORE:J = 0x10b00000002L

.field public static final ENABLED:J = 0x10b00000001L

.field public static final LOCAL_TRANSPORT_PARAMETERS:J = 0x10b00000006L

.field public static final MANAGER_CONSTANTS:J = 0x10b00000005L

.field public static final PACKAGES_TO_CLEAR_DATA_BEFORE_FULL_RESTORE:J = 0x10b00000007L

.field public static final PROVISIONED:J = 0x10b00000003L

.field public static final TRANSPORT:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$Backup;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
