.class public final Landroid/os/PageTypeInfoProto$Block;
.super Ljava/lang/Object;
.source "PageTypeInfoProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PageTypeInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Block"
.end annotation


# static fields
.field public static final CMA:J = 0x10500000006L

.field public static final HIGHATOMIC:J = 0x10500000009L

.field public static final ISOLATE:J = 0x10500000008L

.field public static final MOVABLE:J = 0x10500000005L

.field public static final NODE:J = 0x10500000001L

.field public static final RECLAIMABLE:J = 0x10500000004L

.field public static final RESERVE:J = 0x10500000007L

.field public static final UNMOVABLE:J = 0x10500000003L

.field public static final ZONE:J = 0x10900000002L


# instance fields
.field final synthetic this$0:Landroid/os/PageTypeInfoProto;


# direct methods
.method public constructor <init>(Landroid/os/PageTypeInfoProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/PageTypeInfoProto$Block;->this$0:Landroid/os/PageTypeInfoProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
