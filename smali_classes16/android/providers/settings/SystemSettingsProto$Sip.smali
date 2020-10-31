.class public final Landroid/providers/settings/SystemSettingsProto$Sip;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sip"
.end annotation


# static fields
.field public static final ADDRESS_ONLY:J = 0x10b00000004L

.field public static final ALWAYS:J = 0x10b00000003L

.field public static final CALL_OPTIONS:J = 0x10b00000002L

.field public static final RECEIVE_CALLS:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Landroid/providers/settings/SystemSettingsProto;


# direct methods
.method public constructor <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2

    iput-object p1, p0, Landroid/providers/settings/SystemSettingsProto$Sip;->this$0:Landroid/providers/settings/SystemSettingsProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
