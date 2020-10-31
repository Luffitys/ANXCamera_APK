.class public final Landroid/providers/settings/GlobalSettingsProto$Sys;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sys"
.end annotation


# static fields
.field public static final FREE_STORAGE_LOG_INTERVAL_MINS:J = 0x10b00000001L

.field public static final STORAGE_CACHE_MAX_BYTES:J = 0x10b00000006L

.field public static final STORAGE_CACHE_PERCENTAGE:J = 0x10b00000005L

.field public static final STORAGE_FULL_THRESHOLD_BYTES:J = 0x10b00000004L

.field public static final STORAGE_THRESHOLD_MAX_BYTES:J = 0x10b00000003L

.field public static final STORAGE_THRESHOLD_PERCENTAGE:J = 0x10b00000002L

.field public static final UIDCPUPOWER:J = 0x10b00000008L

.field public static final VDSO:J = 0x10b00000007L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/GlobalSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/GlobalSettingsProto$Sys;->this$0:Landroid/providers/settings/GlobalSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
