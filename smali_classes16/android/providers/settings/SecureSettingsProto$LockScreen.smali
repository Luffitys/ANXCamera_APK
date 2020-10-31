.class public final Landroid/providers/settings/SecureSettingsProto$LockScreen;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LockScreen"
.end annotation


# static fields
.field public static final ALLOW_PRIVATE_NOTIFICATIONS:J = 0x10b00000002L

.field public static final ALLOW_REMOTE_INPUT:J = 0x10b00000003L

.field public static final LOCK_AFTER_TIMEOUT:J = 0x10b00000001L

.field public static final SHOW_NOTIFICATIONS:J = 0x10b00000004L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SecureSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SecureSettingsProto$LockScreen;->this$0:Landroid/providers/settings/SecureSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
