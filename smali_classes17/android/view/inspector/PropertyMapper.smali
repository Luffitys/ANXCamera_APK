.class public interface abstract Landroid/view/inspector/PropertyMapper;
.super Ljava/lang/Object;
.source "PropertyMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inspector/PropertyMapper$PropertyConflictException;
    }
.end annotation


# virtual methods
.method public abstract mapBoolean(Ljava/lang/String;I)I
.end method

.method public abstract mapByte(Ljava/lang/String;I)I
.end method

.method public abstract mapChar(Ljava/lang/String;I)I
.end method

.method public abstract mapColor(Ljava/lang/String;I)I
.end method

.method public abstract mapDouble(Ljava/lang/String;I)I
.end method

.method public abstract mapFloat(Ljava/lang/String;I)I
.end method

.method public abstract mapGravity(Ljava/lang/String;I)I
.end method

.method public abstract mapInt(Ljava/lang/String;I)I
.end method

.method public abstract mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/IntFunction<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/IntFunction<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation
.end method

.method public abstract mapLong(Ljava/lang/String;I)I
.end method

.method public abstract mapObject(Ljava/lang/String;I)I
.end method

.method public abstract mapResourceId(Ljava/lang/String;I)I
.end method

.method public abstract mapShort(Ljava/lang/String;I)I
.end method
