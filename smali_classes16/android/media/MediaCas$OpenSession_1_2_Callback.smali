.class Landroid/media/MediaCas$OpenSession_1_2_Callback;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Landroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSession_1_2_Callback"
.end annotation


# instance fields
.field public mSession:Landroid/media/MediaCas$Session;

.field public mStatus:I

.field final synthetic this$0:Landroid/media/MediaCas;


# direct methods
.method private constructor <init>(Landroid/media/MediaCas;)V
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCas;Landroid/media/MediaCas$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;)V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    iget-object v0, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->this$0:Landroid/media/MediaCas;

    invoke-virtual {v0, p2}, Landroid/media/MediaCas;->createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    return-void
.end method
