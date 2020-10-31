.class public final Landroid/providers/settings/GlobalSettingsProto$Connectivity;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Connectivity"
.end annotation


# static fields
.field public static final CHANGE_DELAY:J = 0x10b00000002L

.field public static final METRICS_BUFFER_SIZE:J = 0x10b00000001L

.field public static final SAMPLING_INTERVAL_IN_SECONDS:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Connectivity;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
