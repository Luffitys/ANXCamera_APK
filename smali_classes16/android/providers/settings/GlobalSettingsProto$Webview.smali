.class public final Landroid/providers/settings/GlobalSettingsProto$Webview;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Webview"
.end annotation


# static fields
.field public static final DATA_REDUCTION_PROXY_KEY:J = 0x10b00000001L

.field public static final FALLBACK_LOGIC_ENABLED:J = 0x10b00000002L

.field public static final MULTIPROCESS:J = 0x10b00000004L

.field public static final PROVIDER:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Webview;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
