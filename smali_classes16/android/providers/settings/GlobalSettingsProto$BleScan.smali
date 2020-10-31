.class public final Landroid/providers/settings/GlobalSettingsProto$BleScan;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BleScan"
.end annotation


# static fields
.field public static final ALWAYS_AVAILABLE:J = 0x10b00000001L

.field public static final BACKGROUND_MODE:J = 0x10b00000008L

.field public static final BALANCED_INTERVAL_MS:J = 0x10b00000006L

.field public static final BALANCED_WINDOW_MS:J = 0x10b00000003L

.field public static final LOW_LATENCY_INTERVAL_MS:J = 0x10b00000007L

.field public static final LOW_LATENCY_WINDOW_MS:J = 0x10b00000004L

.field public static final LOW_POWER_INTERVAL_MS:J = 0x10b00000005L

.field public static final LOW_POWER_WINDOW_MS:J = 0x10b00000002L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$BleScan;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
