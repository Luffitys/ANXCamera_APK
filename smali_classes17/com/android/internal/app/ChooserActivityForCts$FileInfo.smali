.class Lcom/android/internal/app/ChooserActivityForCts$FileInfo;
.super Ljava/lang/Object;
.source "ChooserActivityForCts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityForCts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileInfo"
.end annotation


# instance fields
.field public final hasThumbnail:Z

.field public final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;->name:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/app/ChooserActivityForCts$FileInfo;->hasThumbnail:Z

    return-void
.end method
