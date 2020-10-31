.class public final Landroid/widget/RatingBar$InspectionCompanion;
.super Ljava/lang/Object;
.source "RatingBar$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/RatingBar;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsIndicatorId:I

.field private mNumStarsId:I

.field private mPropertiesMapped:Z

.field private mRatingId:I

.field private mStepSizeId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string v0, "isIndicator"

    const v1, 0x1010147

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mIsIndicatorId:I

    const-string/jumbo v0, "numStars"

    const v1, 0x1010144

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mNumStarsId:I

    const-string/jumbo v0, "rating"

    const v1, 0x1010145

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mRatingId:I

    const-string/jumbo v0, "stepSize"

    const v1, 0x1010146

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mStepSizeId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/RatingBar;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_29

    iget v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mIsIndicatorId:I

    invoke-virtual {p1}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mNumStarsId:I

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mRatingId:I

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/RatingBar$InspectionCompanion;->mStepSizeId:I

    invoke-virtual {p1}, Landroid/widget/RatingBar;->getStepSize()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    return-void

    :cond_29
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/RatingBar;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RatingBar$InspectionCompanion;->readProperties(Landroid/widget/RatingBar;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
