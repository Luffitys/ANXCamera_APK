.class public final Landroid/os/PageTypeInfoProto$MigrateType;
.super Ljava/lang/Object;
.source "PageTypeInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PageTypeInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MigrateType"
.end annotation


# static fields
.field public static final FREE_PAGES_COUNT:J = 0x20500000004L

.field public static final NODE:J = 0x10500000001L

.field public static final TYPE:J = 0x10900000003L

.field public static final ZONE:J = 0x10900000002L


# instance fields
.field final synthetic this$0:Landroid/os/PageTypeInfoProto;


# direct methods
.method public constructor <init>(Landroid/os/PageTypeInfoProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/PageTypeInfoProto$MigrateType;->this$0:Landroid/os/PageTypeInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
