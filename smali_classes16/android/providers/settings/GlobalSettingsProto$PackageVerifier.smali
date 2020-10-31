.class public final Landroid/providers/settings/GlobalSettingsProto$PackageVerifier;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageVerifier"
.end annotation


# static fields
.field public static final DEFAULT_RESPONSE:J = 0x10b00000003L

.field public static final ENABLED:J = 0x10b00000001L

.field public static final INCLUDE_ADB:J = 0x10b00000005L

.field public static final SETTING_VISIBLE:J = 0x10b00000004L

.field public static final TIMEOUT:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$PackageVerifier;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
