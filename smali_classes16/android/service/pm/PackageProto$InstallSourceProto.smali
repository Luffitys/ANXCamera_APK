.class public final Landroid/service/pm/PackageProto$InstallSourceProto;
.super Ljava/lang/Object;
.source "PackageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/pm/PackageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InstallSourceProto"
.end annotation


# static fields
.field public static final INITIATING_PACKAGE_NAME:J = 0x10900000001L

.field public static final ORIGINATING_PACKAGE_NAME:J = 0x10900000002L


# instance fields
.field final synthetic this$0:Landroid/service/pm/PackageProto;


# direct methods
.method public constructor <init>(Landroid/service/pm/PackageProto;)V
    .registers 2

    iput-object p1, p0, Landroid/service/pm/PackageProto$InstallSourceProto;->this$0:Landroid/service/pm/PackageProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
