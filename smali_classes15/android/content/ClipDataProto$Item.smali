.class public final Landroid/content/ClipDataProto$Item;
.super Ljava/lang/Object;
.source "ClipDataProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ClipDataProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Item"
.end annotation


# static fields
.field public static final HTML_TEXT:J = 0x10900000001L

.field public static final INTENT:J = 0x10b00000004L

.field public static final NOTHING:J = 0x10800000005L

.field public static final TEXT:J = 0x10900000002L

.field public static final URI:J = 0x10900000003L


# instance fields
.field final synthetic this$0:Landroid/content/ClipDataProto;


# direct methods
.method public constructor <init>(Landroid/content/ClipDataProto;)V
    .registers 2

    iput-object p1, p0, Landroid/content/ClipDataProto$Item;->this$0:Landroid/content/ClipDataProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
