package com.task.data.remote;

import com.task.model.Category;
import com.task.model.Item;
import io.reactivex.Observable;
import retrofit2.Response;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;

public interface NetworkService {

    @GET(RemoteConstants.CATEGORY)
    Observable<Response<Category>> getCategories();

    @FormUrlEncoded
    @POST(RemoteConstants.ITEM)
    Observable<Response<Item>> getGetItemsUsingCategoryId(@Field("category_id") String categoryId);
}