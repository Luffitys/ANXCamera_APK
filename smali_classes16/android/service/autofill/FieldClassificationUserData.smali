.class public interface abstract Landroid/service/autofill/FieldClassificationUserData;
.super Ljava/lang/Object;
.source "FieldClassificationUserData.java"


# virtual methods
.method public abstract getCategoryIds()[Ljava/lang/String;
.end method

.method public abstract getDefaultFieldClassificationArgs()Landroid/os/Bundle;
.end method

.method public abstract getFieldClassificationAlgorithm()Ljava/lang/String;
.end method

.method public abstract getFieldClassificationAlgorithmForCategory(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getFieldClassificationAlgorithms()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFieldClassificationArgs()Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getValues()[Ljava/lang/String;
.end method
