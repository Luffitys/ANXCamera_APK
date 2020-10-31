.class public final Lmiui/provider/Recordings$MarkpointsOperations$Columns;
.super Ljava/lang/Object;
.source "Recordings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/Recordings$MarkpointsOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final CLOUD_RECORD_ID:Ljava/lang/String; = "cloud_record_id"

.field public static final E_TAG:Ljava/lang/String; = "e_tag"

.field public static final OPER:Ljava/lang/String; = "oper"

.field public static final REC_ID:Ljava/lang/String; = "rec_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
