.class public final Landroid/providers/settings/GlobalSettingsProto$CaptivePortal;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CaptivePortal"
.end annotation


# static fields
.field public static final DETECTION_ENABLED:J = 0x10b00000002L

.field public static final FALLBACK_URL:J = 0x10b00000006L

.field public static final HTTPS_URL:J = 0x10b00000004L

.field public static final HTTP_URL:J = 0x10b00000005L

.field public static final MODE:J = 0x10b00000001L

.field public static final OTHER_FALLBACK_URLS:J = 0x10b00000007L

.field public static final SERVER:J = 0x10b00000003L

.field public static final USER_AGENT:J = 0x10b00000009L

.field public static final USE_HTTPS:J = 0x10b00000008L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$CaptivePortal;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
