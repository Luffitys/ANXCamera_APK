.class public final Landroid/os/SystemPropertiesProto$Ro$Build$Version;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro$Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Version"
.end annotation


# static fields
.field public static final BASE_OS:J = 0x10900000001L

.field public static final CODENAME:J = 0x10900000002L

.field public static final INCREMENTAL:J = 0x10900000003L

.field public static final PREVIEW_SDK:J = 0x10500000004L

.field public static final RELEASE:J = 0x10900000005L

.field public static final SDK:J = 0x10500000006L

.field public static final SECURITY_PATCH:J = 0x10900000007L


# instance fields
.field final synthetic this$2:Landroid/os/SystemPropertiesProto$Ro$Build;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro$Build;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Build$Version;->this$2:Landroid/os/SystemPropertiesProto$Ro$Build;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
