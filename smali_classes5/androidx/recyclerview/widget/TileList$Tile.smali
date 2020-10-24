.class public Landroidx/recyclerview/widget/TileList$Tile;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mItemCount:I

.field public final mItems:[Ljava/lang/Object;

.field mNext:Landroidx/recyclerview/widget/TileList$Tile;

.field public mStartPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method containsPosition(I)Z
    .locals 1

    iget v0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    if-gt v0, p1, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    add-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getByPosition(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget p0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    sub-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0
.end method
